# webpack-dev-server-cli
A webpack-dev-server command line container for daily usage.

# Enviroment Variables
<table>
  <tr>
    <td>WORKDIR</td>
    <td>/mnt/webpack-work</td>
  </tr>
</table>

# Volume
/mnt/webpack-work

# Expose
8080
8081
3000
5000

# Usage
<code>
docker run --rm -it -v $(pwd):/mnt/webpack-work -p 8081:8080 oopschen/webpack-dev-server-cli webpack-dev-server [options]
</code>
