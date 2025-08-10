.class final Lcom/google/android/gms/internal/zzcjl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzijk:Ljava/lang/String;

.field private synthetic zzjds:Lcom/google/android/gms/internal/zzcff;

.field private synthetic zzjdx:Lcom/google/android/gms/internal/zzcfx;

.field private synthetic zzjfo:Lcom/google/android/gms/internal/zzcjd;

.field private synthetic zzjfr:Z

.field private synthetic zzjfs:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjd;ZZLcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfr:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfs:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcjl;->zzjdx:Lcom/google/android/gms/internal/zzcfx;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcjl;->zzjds:Lcom/google/android/gms/internal/zzcff;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcjl;->zzijk:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcjd;->zzd(Lcom/google/android/gms/internal/zzcjd;)Lcom/google/android/gms/internal/zzcgb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfr:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfs:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjl;->zzjdx:Lcom/google/android/gms/internal/zzcfx;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjl;->zzjds:Lcom/google/android/gms/internal/zzcff;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzcjd;->zza(Lcom/google/android/gms/internal/zzcgb;Lcom/google/android/gms/internal/zzbej;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjl;->zzijk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjl;->zzjdx:Lcom/google/android/gms/internal/zzcfx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjl;->zzjds:Lcom/google/android/gms/internal/zzcff;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgb;->zza(Lcom/google/android/gms/internal/zzcfx;Lcom/google/android/gms/internal/zzcff;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjl;->zzjdx:Lcom/google/android/gms/internal/zzcfx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjl;->zzijk:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgj;->zzayy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcgb;->zza(Lcom/google/android/gms/internal/zzcfx;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgj;->zzayr()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjl;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcjd;->zze(Lcom/google/android/gms/internal/zzcjd;)V

    return-void
.end method
