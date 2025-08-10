.class final Lcom/google/android/gms/internal/zzcjw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjfy:Lcom/google/android/gms/internal/zzcjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjw;->zzjfy:Lcom/google/android/gms/internal/zzcjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjw;->zzjfy:Lcom/google/android/gms/internal/zzcjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcjd;->zza(Lcom/google/android/gms/internal/zzcjd;Lcom/google/android/gms/internal/zzcgb;)Lcom/google/android/gms/internal/zzcgb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjw;->zzjfy:Lcom/google/android/gms/internal/zzcjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcjr;->zzjfo:Lcom/google/android/gms/internal/zzcjd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcjd;->zzb(Lcom/google/android/gms/internal/zzcjd;)V

    return-void
.end method
