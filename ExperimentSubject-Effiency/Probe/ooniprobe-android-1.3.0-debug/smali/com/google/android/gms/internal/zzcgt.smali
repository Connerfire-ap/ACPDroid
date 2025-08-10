.class final Lcom/google/android/gms/internal/zzcgt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzizs:Z

.field private synthetic zzizt:Lcom/google/android/gms/internal/zzcgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgs;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgt;->zzizt:Lcom/google/android/gms/internal/zzcgs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcgt;->zzizs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgt;->zzizt:Lcom/google/android/gms/internal/zzcgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgs;->zza(Lcom/google/android/gms/internal/zzcgs;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcgt;->zzizs:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchj;->zzbn(Z)V

    return-void
.end method
