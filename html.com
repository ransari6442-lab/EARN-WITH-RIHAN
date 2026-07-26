

html=dedent(f"""
<!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>RIHAN PREDICTOR</title>
<style>
*{{box-sizing:border-box}}body{{margin:0;font-family:Poppins,Arial;background:#050505;color:#fff;overflow-x:hidden}}
body:before{{content:'';position:fixed;inset:0;background:
radial-gradient(circle at 50% 20%,rgba(255,0,0,.18),transparent 40%),
radial-gradient(circle at 50% 80%,rgba(255,0,0,.12),transparent 35%);animation:pulse 6s infinite}}
@keyframes pulse{{50%{{filter:brightness(1.4)}}}}
.c{{max-width:430px;margin:auto;padding:22px;text-align:center}}
.logo{{width:180px;height:180px;border-radius:50%;border:4px solid #ff2d2d;box-shadow:0 0 35px #f00;object-fit:cover}}
h1{{color:#ff3b3b;letter-spacing:4px}}
.card{{background:rgba(255,255,255,.06);backdrop-filter:blur(10px);border:1px solid rgba(255,0,0,.4);border-radius:22px;padding:22px;margin:22px 0;box-shadow:0 0 30px rgba(255,0,0,.2)}}
.btn{{display:block;text-decoration:none;color:#fff;background:linear-gradient(90deg,#8b0000,#ff2020);padding:18px;border-radius:16px;font-size:26px;font-weight:bold;box-shadow:0 0 25px red;animation:glow 1.6s infinite}}
@keyframes glow{{50%{{transform:scale(1.03);box-shadow:0 0 40px #ff4040}}}}
.stats{{display:flex;justify-content:space-between}}.stats div{{flex:1}}
.small{{color:#bbb}}
#timer{{font-size:54px;color:#ffd54a;font-weight:bold}}
</style></head>
<body><div class="c">
<img class="logo" src="{img_name}">
<h1>RIHAN PREDICTOR</h1>
<p>Your Premium Prediction Destination 👑</p>
<a class="btn" href="https://t.me/+dz8mJ9Pksq5hZWNl">JOIN NOW</a>
<div class="card"><div style="color:#ffcc66;font-weight:bold">TIME LEFT FOR FREE JOIN</div><div id="timer">00:00</div><div class="small">Free join time is over. Register now before the next reset.</div></div>
<div class="card stats"><div><h2>50K+</h2><div class=small>MEMBERS</div></div><div><h2>24/7</h2><div class=small>SUPPORT</div></div><div><h2>100%</h2><div class=small>SECURE</div></div></div>
<p class="small">© 2025 All rights reserved.<br>Ads Managed By <b>@ROJIEADS</b></p>
</div>
<script>
for(let i=0;i<80;i++){{let s=document.createElement('span');s.style.cssText=`position:fixed;width:2px;height:2px;background:#f55;border-radius:50%;left:${{Math.random()*100}}vw;top:${{Math.random()*100}}vh;opacity:.7`;document.body.appendChild(s);}}
</script></body></html>
""")
out="/mnt/data/Premium_RIHAN_PREDICTOR.html"
open(out,"w",encoding="utf8").write(html)
print(out)
