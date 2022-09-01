import { Controller } from "@hotwired/stimulus"

let web3auth = null;
let provider = null;

(async function init() {

  const clientId = "BKw42hjnzAcnwhm4SRkx1a0gxmia6lNZtl-gyaf66aOkEMf2AY-_KGyrOLnEBNdW0exZFWc85W8BU0Z4vnXVgwI"; // get your clientId from https://dashboard.web3auth.io

  web3auth = new window.Web3auth.Web3Auth({
  clientId,
  chainConfig: {
    chainNamespace: "eip155",
    chainId: "0x89",
    rpcTarget: "https://rpc-mainnet.matic.network", // This is the public RPC we have added, please pass on your own endpoint while creating an app
  },
});
await web3auth.initModal();
})();

// Connects to data-controller="wallet"
export default class extends Controller {
  static targets = ["login", "logout", "status"]

  connect() {
    console.log('test');
    if (web3auth.provider) {
      this.statusTarget.classList.add('status-logged')
      this.loginTarget.classList.add('d-none')
      this.logoutTarget.classList.remove('d-none')
      console.log('connecté');
    } else {
      console.log('non conecté');
    }
  }

  async connectWallet() {
    try {
      await web3auth.connect();
      this.loginTarget.classList.add('d-none')
      this.logoutTarget.classList.remove('d-none')
      this.statusTarget.classList.add('status-logged')
    } catch (error) {
      console.error(error.message);
    }
  }

  async disconnectWallet() {
    try {
      await web3auth.logout();
      this.loginTarget.classList.remove('d-none')
      this.logoutTarget.classList.add('d-none')
      this.statusTarget.classList.remove('status-logged')
    } catch (error) {
      console.error(error.message);
    }
  }
}
