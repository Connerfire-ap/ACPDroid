.class final Lcom/google/android/gms/internal/zzciw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjeh:Lcom/google/android/gms/internal/zzcik;

.field private synthetic zzjej:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcik;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciw;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzciw;->zzjej:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciw;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciw;->zzjej:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjd;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
