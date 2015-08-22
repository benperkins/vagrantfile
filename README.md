<h1>benperkins/vagrantfile</h1>
<p>This repository contains a default Vagrantfile and provision bootstrap.</p>
<p>Features:</p>
<ul>
    <li>Default Ubuntu Trusty 64 box</li>
    <li>Clean Apache & PHP installation</li>
    <li>Clear IP variable for easy editing</li>
    <li>Necessary Apache & PHP mods to run Laravel (Mcrypt & Rewrite etc)</li>
    <li>Downloads composer and moves it to a global directory</li>
    <li>Shares the current directories project files</li>
    <li>Injects a default Apache Virtual Host based on the current directory/project</li>
</ul>
<h2>Usage</h2>
<p>Clone the Vagrantfile and the vagrant folder in the root of your project and then run this command in the same directory:</p>
<pre>vagrant up</pre>
<h2>Requirements</h2>
<p>You must have the following installed before using these files:</p>
<ul>
    <li><a href="https://www.vagrantup.com/" target="_blank">Vagrant</a></li>
    <li><a href="https://www.virtualbox.org/" target="_blank">Virtual Box</a></li>
</ul>