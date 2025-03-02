import os
import subprocess
import shutil
import stat
from datetime import datetime

def make_writable(func, path, _):
    """修改文件或目录的权限为可写"""
    os.chmod(path, stat.S_IWRITE)
    func(path)

# 设置路径
WORKING_DIR = os.getcwd()  # 使用当前工作目录
BUILD_DIR = os.path.join(WORKING_DIR, "build")
DEPLOY_DIR = os.path.join(WORKING_DIR, "deploy")

# 确保 deploy 目录存在
os.makedirs(DEPLOY_DIR, exist_ok=True)

# 复制 build 目录下的所有 PDF 文件到 deploy 目录
for filename in os.listdir(BUILD_DIR):
    if filename.endswith(".pdf"):
        src_file = os.path.join(BUILD_DIR, filename)
        dest_file = os.path.join(DEPLOY_DIR, filename)
        shutil.copy2(src_file, dest_file)
        print(f"Copied {src_file} to {dest_file}")

# 获取当前时间戳
now = datetime.now()
timestamp = now.strftime("%Y-%m-%d %H:%M:%S")
branch = "build"

# 使用 GITHUB_TOKEN 进行认证
github_token = os.getenv("GITHUB_TOKEN")
repo_url = f"https://x-access-token:{github_token}@github.com/hitszosa/universal-hit-thesis.git"

# 切换到部署目录
os.chdir(DEPLOY_DIR)

# 初始化 Git 仓库并提交更改
subprocess.run(["git", "init"])
subprocess.run(["git", "add", "."])
subprocess.run(["git", "commit", "-m", f"previews updated: {timestamp}"])
subprocess.run(["git", "remote", "add", "origin", repo_url])
subprocess.run(["git", "branch", "-M", branch])
subprocess.run(["git", "push", "-f", "origin", f"{branch}:{branch}"])

# 删除部署目录
os.chdir(WORKING_DIR)  # 切换回工作目录以删除 deploy 目录

# 删除部署目录（递归修改权限后删除）
shutil.rmtree(DEPLOY_DIR, onerror=make_writable)
print(f"Removed deploy directory: {DEPLOY_DIR}")
