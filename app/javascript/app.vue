<template>
  <v-app id="app">
    <Header/>
    <v-card width="400px" class="mx-auto mt-5">
      <v-card-title>
        <h1 class="display-1">ログイン</h1>
      </v-card-title>
      <v-card-text>
        <v-form>
          <v-text-field prepend-icon="mdi-account-circle" label="ユーザ名" />
          <v-text-field v-bind:type="showPassword ? 'text' : 'password'" prepend-icon="mdi-lock" v-bind:append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'" label="パスワード" @click:append="showPassword = !showPassword"/>
          <v-card-actions>
            <v-btn class="info">ログイン</v-btn>
          </v-card-actions>
        </v-form>
      </v-card-text>
    </v-card>
    <h1>This is app.vue</h1>
    <p>{{ message }}</p>
    <Top/>
  </v-app>
</template>

<script>
import Header from './components/Header';
import Top from './components/Top';

export default {
  data: function () {
    return {
      showPassword: false,
      message: "Hello Vue!"
    }
  },
  components: {
    Header,
    Top,
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
