<template>
  <div>
    <b-card
      v-for="menu in menus"
      :key="menu.id"
      no-body
      class="overflow-hidden"
      style="max-width: 540px;max-hight: 250px;margin-top: 1rem;"
    >
      <b-row no-gutters>
        <b-col md="4">
          <b-card-img
            :src="menu.menu_img"
            alt="Image"
            class="rounded-0"
            style="max-width: 100%;max-hight: 100%;"
          ></b-card-img>
        </b-col>
        <b-col md="6">
          <b-card-body title="Horizontal Card">
            <b-card-title>
              {{ menu.menu_name }}
            </b-card-title>
            <b-card-text>
             {{ menu.menu_detail }}
            </b-card-text>
          </b-card-body>
        </b-col>
      </b-row>
    </b-card>
  </div>
</template>

<script>
export default {
  name: "Card",
  data() {
    return {
      menus: [],
    };
  },
  created() {
    this.axios.get("http://localhost:80/e-food/api/menus.php").then((response) => {
      this.menus = response.data;
    });
  },
};
</script>
