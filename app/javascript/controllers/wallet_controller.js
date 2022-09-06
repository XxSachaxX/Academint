import { Controller } from "@hotwired/stimulus"
import { ethers } from "ethers";
import AcademintNFT from '.././utils/AcademintNFT.json';

let web3auth = null;
const CONTRACT_ADDRESS = '0x849f64B516f599aDc72191648D2c118Fb9c4669A';

// Connects to data-controller="wallet"
export default class extends Controller {
  static targets = ["connect", "mintNFT", "ongoing", "done", "logout"]

  connect() {

    (async function init() {

      const clientId = "BKw42hjnzAcnwhm4SRkx1a0gxmia6lNZtl-gyaf66aOkEMf2AY-_KGyrOLnEBNdW0exZFWc85W8BU0Z4vnXVgwI";

      web3auth = new window.Web3auth.Web3Auth({
      clientId,
      chainConfig: {
        chainNamespace: "eip155",
        chainId: "0x13881", // hex of 80001, polygon testnet
        rpcTarget: "https://rpc.ankr.com/polygon_mumbai",
        // Avoid using public rpcTarget in production.
        // Use services like Infura, Quicknode etc
        displayName: "Polygon Mainnet",
        blockExplorer: "https://mumbai.polygonscan.com/",
        ticker: "MATIC",
        tickerName: "Matic",
      },
    });
    await web3auth.initModal();
    })();

    if (web3auth.provider) {
      this.connectTarget.classList.add('d-none')
      this.mintNFTTarget.classList.remove('d-none')
      this.logoutTarget.classList.remove('d-none')
      console.log('Wallet connecté au connect')
    } else {
      this.mintNFTTarget.classList.add('d-none')
    }

    this.doneTarget.classList.add('d-none')
  }

  async connectWallet() {
    try {
      await web3auth.connect();
      this.connectTarget.classList.add('d-none')
      this.mintNFTTarget.classList.remove('d-none')
      this.logoutTarget.classList.remove('d-none')
    } catch (error) {
      console.error(error.message);
    }
  }

  async disconnectWallet() {
    try {
      await web3auth.logout();
      this.logoutTarget.classList.add('d-none')
      this.connectTarget.classList.remove('d-none')
      this.doneTarget.classList.add('d-none')
      console.log('déconnecté');
    } catch (error) {
      console.error(error.message);
    }
  }

  async askContractToMintNft() {
    try {
    if (web3auth.provider) {
        const provider = new ethers.providers.Web3Provider(web3auth.provider)
        const signer = provider.getSigner()
        const connectedContract = new ethers.Contract(CONTRACT_ADDRESS, AcademintNFT.abi, signer);

        let nftTxn = await connectedContract.makeAnEpicNFT();
        this.mintNFTTarget.classList.add("d-none")
        this.ongoingTarget.classList.remove("d-none")

        await nftTxn.wait();
        this.ongoingTarget.classList.add("d-none")
        this.doneTarget.classList.remove("d-none")

      } else {
        alert('wallet not connected');
      }
    }
    catch (error) {
    console.log(error)
    }
  }
}
