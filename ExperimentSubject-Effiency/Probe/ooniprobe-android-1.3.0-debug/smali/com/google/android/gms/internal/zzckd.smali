.class final Lcom/google/android/gms/internal/zzckd;
.super Lcom/google/android/gms/internal/zzcfp;


# instance fields
.field private synthetic zzjgk:Lcom/google/android/gms/internal/zzckc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckc;Lcom/google/android/gms/internal/zzchj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckd;->zzjgk:Lcom/google/android/gms/internal/zzckc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcfp;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzjgk:Lcom/google/android/gms/internal/zzckc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzut()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgj;->zzayx()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session started, time"

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgu;->zzjal:Lcom/google/android/gms/internal/zzcgw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgw;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawa()Lcom/google/android/gms/internal/zzcik;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "auto"

    const-string v4, "_s"

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/android/gms/internal/zzcik;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgu;->zzjam:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzwh()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    return-void
.end method
