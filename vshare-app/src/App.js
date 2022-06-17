import { Grid } from "@material-ui/core";

import youtube from "./services/yt-api";
import "./App.css";

function App() {
  return (
    <div className="App">
      <Grid style={{ justifyContent: "center" }} container spacing={10}>
        <Grid item xs={11}>
          <Grid spacing={10}>
            <Grid item xs={12}></Grid>
            <Grid item xs={8}></Grid>
            <Grid item xs={4}></Grid>
          </Grid>
        </Grid>
      </Grid>
    </div>
  );
}

export default App;
