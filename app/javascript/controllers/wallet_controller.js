import { Controller } from "@hotwired/stimulus"
import { ethers } from "ethers";

let web3auth = null;
let provider = null;

// Connects to data-controller="wallet"
export default class extends Controller {
  static targets = ["message", "connect"]

  connect() {
    (async function init() {

      const clientId = "BKw42hjnzAcnwhm4SRkx1a0gxmia6lNZtl-gyaf66aOkEMf2AY-_KGyrOLnEBNdW0exZFWc85W8BU0Z4vnXVgwI";

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
  }

  async connectWallet() {
    try {
      await web3auth.connect();
      this.messageTarget.classList.remove('d-none')
      this.connectTarget.classList.add('d-none')
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

  async signMessage () {
    console.log('hello');
    const ethersProvider = new ethers.providers.Web3Provider(web3auth.provider)
    const signer = ethersProvider.getSigner()

    const originalMessage = "Salut tête de bite";

    const signedMessage = await signer.signMessage(originalMessage);

    return signedMessage;
  }
}
