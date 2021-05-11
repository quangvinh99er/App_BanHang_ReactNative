const getListOrder = (token) => {
  let url = `http://192.168.10.64/app/order_history.php?token=${token}`;
  return fetch(url, {
    method: 'GET',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
  }).then((res) => res.json());
};

export {getListOrder};
