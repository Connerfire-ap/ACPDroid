.class public final Lcom/google/android/gms/internal/zzcwr;
.super Ljava/lang/Object;


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static zzjzk:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzgat:Ljava/lang/String;

.field private final zzgav:Ljava/lang/String;

.field private final zzjzl:Landroid/os/PowerManager$WakeLock;

.field private zzjzm:Landroid/os/WorkSource;

.field private final zzjzn:I

.field private final zzjzo:Ljava/lang/String;

.field private zzjzp:Z

.field private final zzjzq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzjzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WakeLock"

    sput-object v0, Lcom/google/android/gms/internal/zzcwr;->TAG:Ljava/lang/String;

    const-string v0, "*gcore*:"

    sput-object v0, Lcom/google/android/gms/internal/zzcwr;->zzjzk:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzcwr;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v5, p2

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcwr;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcwr;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzp:Z

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzq:Ljava/util/Map;

    const-string p4, "Wake lock name can NOT be empty"

    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzn:I

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcwr;->zzgav:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcwr;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_1

    sget-object p6, Lcom/google/android/gms/internal/zzcwr;->zzjzk:Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p6, v0

    :goto_0
    iput-object p6, p0, Lcom/google/android/gms/internal/zzcwr;->zzgat:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/internal/zzcwr;->zzgat:Ljava/lang/String;

    :goto_1
    const-string p6, "power"

    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/PowerManager;

    invoke-virtual {p6, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    invoke-static {p4}, Lcom/google/android/gms/common/util/zzy;->zzcv(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {p5}, Lcom/google/android/gms/common/util/zzu;->zzgn(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :cond_2
    invoke-static {p1, p5}, Lcom/google/android/gms/common/util/zzy;->zzaa(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzm:Landroid/os/WorkSource;

    if-eqz p1, :cond_4

    invoke-static {p4}, Lcom/google/android/gms/common/util/zzy;->zzcv(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzm:Landroid/os/WorkSource;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzm:Landroid/os/WorkSource;

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzm:Landroid/os/WorkSource;

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/zzcwr;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private final zzku(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzp:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzo:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final acquire(J)V
    .locals 11

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcwr;->zzku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzq:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    if-lez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzq:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    :cond_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzp:Z

    const/4 v10, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzq:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzq:Ljava/util/Map;

    new-array v0, v10, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    :goto_0
    if-nez p2, :cond_4

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzp:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzalt()Lcom/google/android/gms/common/stats/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwr;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1, v4}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwr;->zzgat:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzn:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzm:Landroid/os/WorkSource;

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzy;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    iget p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    add-int/2addr p1, v10

    iput p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final isHeld()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcwr;->zzku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzp:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzq:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzq:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    if-nez v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzp:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    if-ne v0, v9, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/stats/zze;->zzalt()Lcom/google/android/gms/common/stats/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwr;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v5}, Lcom/google/android/gms/common/stats/zzc;->zza(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcwr;->zzgat:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzm:Landroid/os/WorkSource;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzy;->zzb(Landroid/os/WorkSource;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/common/stats/zze;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzr:I

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setReferenceCounted(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzl:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcwr;->zzjzp:Z

    return-void
.end method
