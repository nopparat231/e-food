<template>
  <b-navbar toggleable type="dark" variant="dark">
    <b-navbar-brand href="/" style="margin-left: 0.5rem;" >E-FOOD</b-navbar-brand>
    
    <Sidebar />

  </b-navbar>
</template>


<script>
import Sidebar from "./Sidebar";

export default {
  name: 'Navbar',
  components: {
      Sidebar
  }
}
</script>