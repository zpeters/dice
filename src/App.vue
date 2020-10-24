<template>
  <div>
  <div class="w-auto px-6 py-12 mx-20 bg-white rounded-lg shadow-md">
    <h1 class="font-sans text-3xl font-hairline tracking-wide">Dice Game</h1>
  </div>
    <div class="flex content-center">
      <div class="w-1/2 p-6 mt-6 ml-20 mr-10 text-center bg-white rounded-lg shadow-md">
        White dice
        <div class="font-mono text-6xl" v-bind:class="{ 'animate-spin': isRolling}">{{ whiteDie }}</div>
      </div>
      <div class="w-1/2 p-6 mt-6 ml-10 mr-20 text-center bg-white rounded-lg shadow-md">
        Red dice
        <div class="font-mono text-6xl" v-bind:class="{ 'animate-spin': isRolling}">{{ redDie }}</div>
      </div>
    </div>
  <div class="w-auto px-6 py-12 mx-20 my-6 text-center">
    <button class="px-4 py-2 text-4xl font-bold text-white bg-gray-500 rounded-full focus:outline-none hover:bg-gray-700" @click="rollDice">
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
      redDice: [ '⚀','⚁', '⚂', '⚃', '⚄', '⚅' ],
      whiteDice: [ '⚀','⚁', '⚂', '⚃', '⚄', '⚅' ],
      redDie: '☐',
      whiteDie: '☐'
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
body {
  background-color: #EEEEEE;
}
</style>
