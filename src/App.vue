<template>
  <div id="app">
    <b-container class="bv-example-row">
      <b-row class="justify-content-md-center">
        <b-col col lg="2"></b-col>
        <b-col cols="12">
          <Navbar />

          <Home />
        </b-col>
        <b-col col lg="2"></b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import Navbar from "./components/templates/Navbar";
import Home from "./components/Home";

export default {
  name: "App",
  components: {
    Navbar,
    Home,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 0rem;
}
</style>
