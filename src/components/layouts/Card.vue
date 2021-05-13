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
              This is a wider card with supporting text as a natural lead-in to
              additional content. This content is a little bit longer.
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
      menus: [{
          id: 1,
          menu_img: "https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg",
          menu_name: "Piszaaa"
      }],
    };
  },
//   created() {
//     this.axios.get("http://localhost:8000/api/menus/").then((response) => {
//       this.menus = response.data;
//     });
//   },
};
</script>
