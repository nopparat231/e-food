<template>
  <div>
    <b-navbar type="dark" variant="dark">
      <b-navbar-brand href="/" style="margin-left: 0.5rem;"
        >E-FOOD</b-navbar-brand
      >
      <b-collapse id="nav-collapse" is-nav>
        <div
          class="collapse navbar-collapse justify-content-end"
          id="navbarCollapse"
        >
          <ul class="navbar-nav">
            <li class="nav-item active">
              <b-button
                v-b-toggle.sidebar-1
                variant="dark"
                style="margin-right: 0.5rem;"
                ><b-icon icon="minecart-loaded" scale="1"></b-icon
                ><b-badge variant="light">9</b-badge>
              </b-button>
            </li>
            <li class="nav-item">
              <b-button
                variant="dark"
                style="margin-right: 0.5rem;"
                v-b-toggle.sidebar-no-header
                ><b-icon icon="list" scale="1.5"></b-icon
              ></b-button>
            </li>
          </ul>
        </div>
      </b-collapse>
    </b-navbar>

    <SidebarOrder />
    <Sidebar />
  </div>
</template>

<script>
import Sidebar from "./Sidebar";
import SidebarOrder from "../layouts/SidebarOrders";

export default {
  name: "Navbar",
  components: {
    Sidebar,
    SidebarOrder,
  },
};
</script>
