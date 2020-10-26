<template>
  <div class="h-screen pt-8 bg-gradient-to-r from-blue-700 to-blue-500">
  <div class="w-auto px-6 py-12 mx-20 bg-white rounded-lg shadow-md">
    <h1 class="font-sans text-3xl font-hairline tracking-wide">Dice Game</h1>
    <h2 class="font-sans font-thin">
      Click 'Roll Dice' for a random dice roll
    </h2>
  </div>
    <div class="md:flex md:flex-row flex-col ml-20 mr-20">
      <div class="md:w-1/2 w-auto md:p-6 mt-6 md:mr-10 text-2xl font-light text-center bg-white rounded-lg shadow-md">
        White die
        <div class="font-mono text-6xl" v-bind:class="{ 'animate-spin': isRolling}">{{ whiteDie }}</div>
      </div>
      <div class="md:w-1/2 w-auto md:p-6 mt-6 md:ml-10 text-2xl font-light text-center bg-white rounded-lg shadow-md ">
        Red die
        <div class="font-mono text-6xl text-red-600" v-bind:class="{ 'animate-spin': isRolling}">{{ redDie }}</div>
      </div>
    </div>
  <div class="w-auto px-6 py-12 mx-20 my-6 text-center">
    <button class="px-4 py-2 text-4xl font-bold text-white bg-gray-700 rounded-full focus:outline-none hover:bg-gray-600" @click="rollDice">
      Roll Dice
    </button>
  </div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      isRolling: false,
      // whiteDice has the 'fake' sides (two five's)
      whiteDice: [ '⚀','⚄', '⚂', '⚃', '⚄', '⚅' ],
      redDice: [ '⚀','⚁', '⚂', '⚃', '⚄', '⚅' ],
      whiteDie: '?',
      redDie: '?'
    }
  },
  methods: {
    sleep(ms) {
      return new Promise(resolve => setTimeout(resolve, ms))
    },
    async rollDice() {
        this.isRolling = true
        await this.sleep(800)
        this.redDie = this.redDice[Math.floor(Math.random() * 6)]
        this.whiteDie = this.whiteDice[Math.floor(Math.random() * 6)]
        this.isRolling = false
    }
  }
}
</script>

<style>
</style>
