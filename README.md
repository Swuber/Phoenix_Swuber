![swuber_3](https://cloud.githubusercontent.com/assets/11463275/25136927/4fd60eea-2424-11e7-989d-d6630c5b0827.png)

# files and folders

<hr>

# Implementation

On a mac: 
make sure postgress is installed via homebrew.
<pre>
brew install postgresql
brew services start postgresql
now restart your computer, reason: postgres uses a launchd. (only needed for first time postgresql start.)
</pre>

  * Gather dependencies
<pre>
 mix deps.get
 npm install 
</pre>
  * Create and migrate your database with 
<pre>
 mix ecto.create && mix ecto.migrate
</pre>
  * Start Phoenix server
<pre>
 mix phoenix.server
</pre>

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

# Done so far notes
1.) look at endpoint... but dont touch<br>
2.) change channels<br>
3.) change static javascript<br>
4.) change template web page<br>

# UnfSwuber
