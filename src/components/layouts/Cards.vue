<template>
  <div>
    <b-card-group deck>
      <ul>
        <li v-for="menu in menus" :key="menu.id">
          <b-card
            style="max-width: 250px;max-hight: 250px;"
            :title="menu.menu_name"
            :img-src="menu.menu_img"
            img-alt="Image"
            img-top
          >
            <b-card-text>
              {{ menu.menu_detail }}
              This is a wider card with supporting text below.
            </b-card-text>
            <template #footer>
              <small class="text-muted">Last updated 3 mins ago</small>
            </template>
          </b-card>
        </li>
      </ul>
    </b-card-group>
  </div>
</template>

<script>
export default {
  name: "Cards",
  data() {
    return {
      menus: [],
    };
  },
  created() {
    this.axios
      .get("http://localhost:80/e-food/api/menus.php")
      .then((response) => {
        this.menus = response.data;
      });
  },
};
</script>

<style scoped>
ul {
  display: flex;
  flex-wrap: wrap;
  margin-top: 1rem;
  list-style-type: none;
}
li {
  margin: 0 12px 40px;
}
</style>
