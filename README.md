<h2 align="center">PowerShell + Windows Task Manager</h2><br>
<div align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/2/2f/PowerShell_5.0_icon.png" alt="powershell" width="45" height="45"/>
<img src="https://winaero.com/blog/wp-content/uploads/2017/06/task-scheduler-clock-time-date-icon.png" alt="Windows Task Scheduler" width="40" height="40"/>
</div>
<hr>

<p>
  The script automates the process of <b>creating</b> a timestamped text file, <b>adding </b>it to a Git repository and <b>committing</b> and <b>pushing</b> the changes to a remote repository. It ensures the directory for the text file exists, generates the text file, checks for uncommitted changes, and if changes are detected, <b>stages</b>, <b>commits</b>, and <b>pushes</b> these changes with a <b>predefined</b> commit message. If no changes are found, it outputs a message indicating that there are no changes to commit. <b>This functionality is useful for automating documentation and updates in a Git repository</b>, making it more efficient and less error-prone.
</p>
