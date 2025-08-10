.class final Lcom/google/android/gms/internal/zzcip;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzijk:Ljava/lang/String;

.field private synthetic zzjdv:Ljava/lang/String;

.field private synthetic zzjdw:Ljava/lang/String;

.field private synthetic zzjeh:Lcom/google/android/gms/internal/zzcik;

.field private synthetic zzjej:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzjek:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcik;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcip;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcip;->zzjej:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcip;->zzijk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcip;->zzjdv:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcip;->zzjdw:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcip;->zzjek:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcip;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcik;->zzitk:Lcom/google/android/gms/internal/zzchj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcip;->zzjej:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcip;->zzijk:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcip;->zzjdv:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcip;->zzjdw:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcip;->zzjek:Z

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcjd;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
