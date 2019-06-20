<template>
    <div class="col-md-6 offset-md-3 col-12 terminal-view">
        <div class="row terminal-header">
            <div class="buttons">
                <i class="terminal-icon fas fa-circle times"></i>
                <i class="terminal-icon fas fa-circle minus"></i>
                <i class="terminal-icon fas fa-circle plus"></i>
            </div>
            <div class="col-md-9 col-8">
                <p>zsh</p>
            </div>
        </div>
        <div class="row">
            <p class="terminal-text">$ whoami </p>
        </div>
        <div class="row">
            <p class="result-strings">anshu rao</p>
        </div>
        <div class="row">
            <vue-typed-js 
                :strings="['a software engineer.', 
                'a music lover.',
                'keen on using tech to improve lives.',
                'a big sports fan.', 
                'eager to take on new challenges.']"
                :typeSpeed="50"
                :backSpeed="15"
                :backDelay="600"
                :loop="true">
                <p class="terminal-text typed">$ I'm <span class="typing typing-strings"></span></p>
            </vue-typed-js>
        </div>
    </div>
</template>

<script>

export default {
  name: 'Terminal',
  props: {
  }
}
</script>

<style>
.terminal-view{
    background-color: #39373a;
    color: white;
    border: .1px solid grey;
    border-radius: .2em;
    box-shadow: .1px 2px 4px black;
}
.terminal-header{
    border: .1px solid grey;
    border-top-left-radius: .2em;
    border-top-right-radius: .2em;
    background-color: #cfd1cf;
    font-size: 12px;
    height: 18px;
    color: black;
}
.terminal-icon{
    margin-left: 5px;
}
.terminal-icon.times { color: #e04f47; }
.terminal-icon.minus { color: #efd25d; }
.terminal-icon.plus { color: #2db742; }
.buttons{
    margin-right: 10px;
}
.terminal-text{
    font-size: 28px;
    margin-left: 12px;
    margin-top: 10px;
    margin-bottom: 0px;
}
.result-strings{
    color: #2db742;
    font-size: 20px;
    margin-left: 12px;
    margin-bottom: 0px;
}
.typed { margin-bottom: 20px; }

@media only screen and (max-width: 600px) {
  .terminal-text{
    font-size: 16px;
  }
  .result-strings{
      font-size: 12px;
  }
}
</style>
