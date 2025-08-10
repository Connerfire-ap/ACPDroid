.class final Lcom/google/android/gms/internal/zzcfq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziwj:Lcom/google/android/gms/internal/zzcfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfq;->zziwj:Lcom/google/android/gms/internal/zzcfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfq;->zziwj:Lcom/google/android/gms/internal/zzcfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfp;->zza(Lcom/google/android/gms/internal/zzcfp;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawl()Lcom/google/android/gms/internal/zzche;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzche;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfq;->zziwj:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->zzdr()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfq;->zziwj:Lcom/google/android/gms/internal/zzcfp;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzcfp;->zza(Lcom/google/android/gms/internal/zzcfp;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfq;->zziwj:Lcom/google/android/gms/internal/zzcfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcfp;->zzb(Lcom/google/android/gms/internal/zzcfp;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfq;->zziwj:Lcom/google/android/gms/internal/zzcfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfp;->run()V

    :cond_1
    return-void
.end method
