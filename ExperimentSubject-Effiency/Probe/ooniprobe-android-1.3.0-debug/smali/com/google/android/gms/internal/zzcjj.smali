.class final Lcom/google/android/gms/internal/zzcjj;
.super Lcom/google/android/gms/internal/zzcfp;


# instance fields
.field private synthetic zzjfo:Lcom/google/android/gms/internal/zzcjd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjd;Lcom/google/android/gms/internal/zzchj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjj;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcfp;-><init>(Lcom/google/android/gms/internal/zzchj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjj;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayt()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgl;->log(Ljava/lang/String;)V

    return-void
.end method
