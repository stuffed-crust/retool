function extractOrdersByAsset() {
  const orders = {{ query6.data }};
  const filteredOrders = orders.filter(order => order.status === 'order placed');
  
  const groupedOrders = _.groupBy(filteredOrders, 'ordered_by');
  
  const result = Object.keys(groupedOrders).map(asset => ({
    asset,
    orders: groupedOrders[asset]
  }));
  
  return result;
}

return extractOrdersByAsset();



