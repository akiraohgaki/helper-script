import { bundle } from 'https://deno.land/x/emit/mod.ts';

const entryPoint = Deno.args[0];
const outfile = Deno.args[1];

if (entryPoint && outfile) {
  console.log(`entryPoint: ${entryPoint}`);
  console.log(`outfile: ${outfile}`);

  const { code } = await bundle(entryPoint);
  Deno.writeTextFile(outfile, code);
} else {
  console.error('Invalid argument error');
}
