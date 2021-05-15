<template>
  <div>
    <b-modal id="modal-center" centered title="BootstrapVue">
      
        <b-card
            :title="menu_name"
            :img-src="menu_img"
            img-alt="Image"
            img-top
          >
            <b-card-text>
              {{ menu_detail }}
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

    </b-modal>
  </div>
</template>

<script>
export default {
  name: "Model",
  props: {
    id: String,
    menu_name: String,
    menu_img: String,
    menu_detail: String,
  },
};
</script>
