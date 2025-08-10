.class final Lcom/google/android/gms/internal/zzcgk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzizi:Ljava/lang/String;

.field private synthetic zzizj:Lcom/google/android/gms/internal/zzcgj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgk;->zzizj:Lcom/google/android/gms/internal/zzcgj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgk;->zzizi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgk;->zzizj:Lcom/google/android/gms/internal/zzcgj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgj;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcii;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgk;->zzizj:Lcom/google/android/gms/internal/zzcgj;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgj;->zzk(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzizv:Lcom/google/android/gms/internal/zzcgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgk;->zzizi:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcgy;->zzg(Ljava/lang/String;J)V

    return-void
.end method
