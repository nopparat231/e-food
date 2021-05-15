<template>
  <div>
    <Model :id="id" :menu_name="menu_name" :menu_img="menu_img" :menu_detail="menu_detail" />
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
              <b-button
                v-b-modal.modal-center
                squared
                @click="GetMenu(menu.id,menu.menu_name,menu.menu_img,menu.menu_detail)"
                variant="text-decoration-none"
                >เลือกเมนู</b-button
              >
            </template>
          </b-card>
        </li>
      </ul>
    </b-card-group>
  </div>
</template>

<script>
import Model from "./Model";

export default {
  name: "Cards",
  data() {
    return {
      menus: [],
      id: '',
      menu_name: '',
      menu_img: '',
      menu_detail: ''
    };
  },
  created() {
    this.axios
      .get("http://localhost:80/e-food/api/menus.php")
      .then((response) => {
        this.menus = response.data;
      });
  },
  methods: {
    GetMenu(id,menu_name,menu_img,menu_detail) {
      this.id = id;
      this.menu_name = menu_name;
      this.menu_img = menu_img;
      this.menu_detail = menu_detail;
    },
  },
  components: {
    Model,
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
