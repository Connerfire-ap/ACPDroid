.class public final Lcom/google/android/gms/internal/zzbzy;
.super Ljava/lang/Object;


# static fields
.field private static zzhga:Lcom/google/android/gms/internal/zzbzy;


# instance fields
.field private final zzhgb:Lcom/google/android/gms/internal/zzbzt;

.field private final zzhgc:Lcom/google/android/gms/internal/zzbzu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbzy;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/zzbzy;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/zzbzy;->zzhga:Lcom/google/android/gms/internal/zzbzy;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbzt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbzy;->zzhgb:Lcom/google/android/gms/internal/zzbzt;

    new-instance v0, Lcom/google/android/gms/internal/zzbzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbzu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbzy;->zzhgc:Lcom/google/android/gms/internal/zzbzu;

    return-void
.end method

.method private static zzaqo()Lcom/google/android/gms/internal/zzbzy;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzbzy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzbzy;->zzhga:Lcom/google/android/gms/internal/zzbzy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zzaqp()Lcom/google/android/gms/internal/zzbzt;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbzy;->zzaqo()Lcom/google/android/gms/internal/zzbzy;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbzy;->zzhgb:Lcom/google/android/gms/internal/zzbzt;

    return-object v0
.end method

.method public static zzaqq()Lcom/google/android/gms/internal/zzbzu;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbzy;->zzaqo()Lcom/google/android/gms/internal/zzbzy;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbzy;->zzhgc:Lcom/google/android/gms/internal/zzbzu;

    return-object v0
.end method
