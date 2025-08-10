.class final Lcom/google/android/gms/internal/zzcib;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private synthetic zzijk:Ljava/lang/String;

.field private synthetic zzjdt:Lcom/google/android/gms/internal/zzcho;

.field private synthetic zzjdx:Lcom/google/android/gms/internal/zzcfx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcho;Lcom/google/android/gms/internal/zzcfx;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcib;->zzjdx:Lcom/google/android/gms/internal/zzcfx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcib;->zzijk:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcib;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcib;->zzjdx:Lcom/google/android/gms/internal/zzcfx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcib;->zzijk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzchj;->zza(Lcom/google/android/gms/internal/zzcfx;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
