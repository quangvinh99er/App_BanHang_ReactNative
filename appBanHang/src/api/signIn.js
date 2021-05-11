const signIn = (email, password) =>
  fetch('http://192.168.10.64/app/login.php', {
    method: 'POST',
    headers: {
      Accept: 'application/json',
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({email, password}),
  }).then((response) => response.json());

export {signIn};
