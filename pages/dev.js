import Layout from "@/components/Layout";
// import Grid from "@/components/Grid";
// import { prisma } from "@/lib/prisma";

export async function getServerSideProps() {
  //   // Get all homes
  //   const homes = await prisma.home.findMany();
  //   // Pass the data to the Home page
  //   return {
  //     props: {
  //       homes: JSON.parse(JSON.stringify(homes)),
  //     },
  //   };
  return { props: {} };
}

export default function Home({ homes = [] }) {
  return (
    <Layout>
      <h1 className="text-xl font-medium text-gray-800">
        This is the dev main page
      </h1>
      <p className="text-gray-500">This is where I put my profolio etc.</p>
      <div className="mt-8">Some other stuff here</div>
    </Layout>
  );
}
