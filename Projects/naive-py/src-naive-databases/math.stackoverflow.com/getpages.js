
document = document.open('https://math.stackexchange.com/questions')

list = document.querySelector('div[id="content"]').querySelectorAll('div.s-pagination').forEach(a => {a.querySelectorAll('a').forEach(aa => console.log(aa.href)) })
