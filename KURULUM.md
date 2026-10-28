# Seyyah · Tek kişilik sosyal medya ekibi · Kurulum

Hazır olanlar: klasör yapısı, CLAUDE.md (beyin), 33 alt ajan, 5 komut, izin kilidi, bilgi katmanı (Seyyah'ın sitesinden dolduruldu), sabah özeti betikleri.
Senin yapacakların aşağıda. Sırayla git, bir adımı bitirmeden ötekine geçme.

## 1 · Claude Code'u kur (ücretli Claude planı gerekir)
```
# Windows PowerShell
irm https://claude.ai/install.ps1 | iex
# macOS / Linux
curl -fsSL https://claude.ai/install.sh | bash
```
Yeni pencerede: `claude --version`

## 2 · Klasörü aç
Zip'i çıkar, `seyyah-sosyal` klasörüne gir, `claude` yaz. İlk mesaj:
> CLAUDE.md'yi ve bilgi/ klasörünü oku, eksik ([ ] işaretli) yerleri listele.

## 3 · Eksikleri doldur (10 dk)
- `bilgi/teklif/fiyatlar.md` → 50/100 ml ve giyim fiyatları, stok (site JS ile yüklendiği için çekemedim)
- `bilgi/teklif/teklif.md` → koku listesi eksiksiz mi, Ada'nın notaları
- `bilgi/rakipler.md` → takip ettiğin 5-10 hesap

## 4 · Instagram ve TikTok'u hazırla
- Instagram: İşletme ya da İçerik Üreticisi hesabı, Ayarlar → Mesajlar → bağlı araçların mesaj erişimi AÇIK
- TikTok: İşletme hesabı

## 5 · Zernio'yu bağla (API anahtarı GEREKMEZ)
1. zernio.com'da hesap aç, Instagram (İşletme/İçerik Üreticisi) ve TikTok'u bağla.
2. Bağlantı ayarı klasörde hazır (`.mcp.json`). Klasörde `claude` yaz, sonra `/mcp` yaz → **zernio** → **Authenticate** → açılan tarayıcıda onayla.
3. Tekrar `/mcp`: zernio "connected" görünmeli.
4. İlk test: "Zernio'da hangi hesaplar bağlı? Son 7 günün Instagram istatistiğini oku." (okuma, izin istemez)

### İzin kilidi nasıl çalışır
- Okuma araçları (istatistik, yorum/DM listesi, araç arama) serbest.
- Yayın, zamanlama, yorum yanıtı, DM, yorum gizleme ve **call_tool** her seferinde sana sorar.
- Zernio'nun 496 aracının çoğu gizli; Claude onlara `call_tool` ile ulaşır. Bu yüzden `call_tool` her zaman sorar. Sorduğunda, istenen aracın adını ve içeriğini oku: silme (`delete`) içeren hiçbir şeyi onaylama.
- Asla "Yes, and don't ask again" seçme: o araç kilitten çıkar.

## 6 · Yorum→DM otomasyonu (Zernio)
`bilgi/topluluk/dm-metinleri.md`deki ADA ve ROTA metinlerini gir, anahtar kelimenin tüm yazımlarını ekle, ikinci hesabınla canlı dene.

## 7 · Çalıştırma takvimi
| Hafta | Ne çalışır |
|---|---|
| 1 | /icerik + /yayin (yayını elle onayla). Ada lansmanı. |
| 2 | + /arastirma (Pazartesi), sabah özeti zamanla, /buyume (Cuma) |
| 4 | Kazanan kalıpları bilgi katmanına ekle |
| Sonra | Kazanan belli olunca reklam ajanı (bütçeyi sen onaylarsın) |

İlk komut önerisi:
> /icerik Ada parfümü lansmanı: 3 Reels + 1 karusel, deneme boyu 149₺ çağrısıyla

## 8 · Sabah özeti
- Windows: `ozet.bat` içindeki schtasks satırını bir kez çalıştır.
- macOS/Linux: `chmod +x ozet.sh`, sonra crontab'a ekle.
Bilgisayar 07:00'de açık olmalı.

## Günlük senin işin (15-20 dk)
Sabah özetini oku → onay/ klasöründeki taslakları onayla ("onaylıyorum" / "şunu değiştir") → akşam olumsuz yorumları kendin yanıtla.

## Önemli
- Site siparişte UTM'yi kaydetmiyor; gelir takibi şimdilik yalnız tık sayar. İstersen sitenin sipariş formuna UTM yakalama ekleyebilirim.
- Ajanlar asla yayınlamaz, taslak yazar. Yayın ve gönderme araçları her seferinde sana sorar.
