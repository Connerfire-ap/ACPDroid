.class abstract Lcom/google/android/gms/internal/zzcii;
.super Lcom/google/android/gms/internal/zzcih;


# instance fields
.field private zzdqd:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcih;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcii;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzcii;)V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcii;->zzdqd:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcii;->zzaxn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcii;->zzdqd:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcii;->zzdqd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzaxn()Z
.end method

.method protected zzaym()V
    .locals 0

    return-void
.end method

.method public final zzazk()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcii;->zzdqd:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcii;->zzaym()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcii;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcii;->zzdqd:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zzwu()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcii;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
