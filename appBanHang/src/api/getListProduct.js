const getListProduct = (idType, page, nameIdType) => {
  let url;

  if (idType !== 'COLLECTION') {
    if (nameIdType === 'CATEGORY') {
      url = `http://192.168.10.64/app/product_by_type.php?id_type=${idType}&page=${page}`;
    } else {
      url = `http://192.168.10.64/app/product_by_banner.php?id_type=${idType}&page=${page}`;
    }
  }
  return fetch(url, {
    method: 'GET',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
  }).then((res) => res.json());
};

export {getListProduct};
