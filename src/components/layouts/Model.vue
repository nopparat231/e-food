<template>
  <div>
    <b-modal
      id="modal-center"
      centered
      :title="menu_name"
      @show="resetModal"
      @hidden="resetModal"
      @ok="handleOk"
    >
      <b-img :src="menu_img" fluid></b-img>
      {{ menu_detail }}

      <form ref="form" @submit.stop.prevent="handleSubmit">
        <b-form-group
          label="รายละเอียดเพิ่มเติม :"
          label-for="name-input"
          :state="nameState"
        >
          <b-form-input
            id="name-input"
            v-model="name"
            :state="nameState"
          ></b-form-input>
        </b-form-group>
      </form>
    </b-modal>
  </div>
</template>

<script>
export default {
  name: "Model",
  data() {
    return {
      name: "",
      nameState: null,
      submittedNames: [],
      order: {
        user_id: "24",
        menu_id: "",
        orders_detail: "",
        orders_status: "1",
      },
    };
  },
  props: {
    id: String,
    menu_name: String,
    menu_img: String,
    menu_detail: String,
  },
  methods: {
    checkFormValidity() {
      const valid = this.$refs.form.checkValidity();
      this.nameState = valid;
      return valid;
    },
    resetModal() {
      this.name = "";
      this.nameState = null;
    },
    handleOk(bvModalEvt) {
      // Prevent modal from closing
      bvModalEvt.preventDefault();
      // Trigger submit handler
      this.handleSubmit();
    },
    handleSubmit() {
      // Exit when the form isn't valid
      if (!this.checkFormValidity()) {
        return;
      }
      // Push the name to submitted names
      //this.submittedNames.push(this.name);
      (this.order.menu_id = this.id),
        (this.order.orders_detail = this.name),
        this.addOrder();
      //console.log(this.order);
      // Hide the modal manually
      this.$nextTick(() => {
        this.$bvModal.hide("modal-center");
        window.location.reload()
        this.$root.$emit('bv::toggle::collapse', 'sidebar-1')
      });
    },
    addOrder() {
      this.axios
        .post("http://localhost/e-food/api/orders.php", this.order)
        .then((response) => console.log(response))
        .catch((err) => console.log(err))
        .finally(() => (this.loading = false));
    },
  },
};
</script>
