// Module Federation across StayNest frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "staynest_shell",
      remotes: {
        admin: "admin@https://admin.staynest.internal/remoteEntry.js",
        partner: "partner@https://partner.staynest.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
