<template>
  <div>
    <b-sidebar id="sidebar-1" title="Orders" backdrop shadow>
      <div class="px-3 py-2">
        <p>
          <b>รายการอาหารที่เลือก</b>
        </p>
        <hr />

        <div class="orders-list">
          <div v-for="order in orders" :key="order.id">
            <div class="product-name-prices">
              <p class="order-name">
                <b>{{ order.menu_name }}</b>
              </p>
              <p class="order-name-price">
                <b>฿ {{ order.menu_price }}</b>
              </p>
            </div>
            <div class="product-name-prices">
              <p class="order-name">{{ order.orders_detail }}</p>
              <p class="order-action">
                <b-icon icon="trash" variant="secondary"></b-icon>
                <span
                  ><b>{{ 1 }}</b></span
                >
                <b-icon icon="plus-circle" variant="secondary"></b-icon>
              </p>
            </div>
            <br />
          </div>
          <br />
          <hr />
        </div>

        <div class="product-name-prices">
          <p class="order-name">จำนวนรายการ</p>
          <p class="order-name-price">
            <b>{{ 3 }}</b>
          </p>
        </div>

        <div class="product-name-prices">
          <p class="order-name"><b>ยอดรวม</b></p>
          <p class="order-name-price">
            <b>฿ {{ 120 }}</b>
          </p>
        </div>
      </div>
      <br />
      <div>
        <b-button squared variant="outline-danger">ยืนยันการสั่งอาหาร</b-button>
      </div>
    </b-sidebar>
  </div>
</template>

<script>
export default {
  name: "SidebarOrders",
  data() {
    return {
      orders: [],
    };
  },
  created() {
    this.axios
      .get(`http://localhost/e-food/api/orders.php?user_id=24`)
      .then((response) => {
        this.orders = response.data;
      });
  },
};
</script>

<style scoped>
li {
  list-style-type: none;
}
p {
  margin-top: 0;
  margin-bottom: 0rem;
}
.product-name-prices {
  display: flex;
}
.order-name {
  text-align: left;
  line-height: 25px;
  flex: 3;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}
.order-action span {
  padding: 0.5rem;
}

.wrapper {
  margin: 0 0 8px;
  display: flex;
  flex-direction: column;
}
</style>
