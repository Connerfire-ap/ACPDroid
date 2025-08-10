.class final Lcom/google/android/gms/internal/zzcgq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzbzn:I

.field private final zzdcz:Ljava/lang/Throwable;

.field private final zzizm:Lcom/google/android/gms/internal/zzcgp;

.field private final zzizn:[B

.field private final zzizo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgp;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcgp;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgq;->zzizm:Lcom/google/android/gms/internal/zzcgp;

    iput p3, p0, Lcom/google/android/gms/internal/zzcgq;->zzbzn:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcgq;->zzdcz:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcgq;->zzizn:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgq;->mPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcgq;->zzizo:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgp;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcgo;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzcgq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgp;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgq;->zzizm:Lcom/google/android/gms/internal/zzcgp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgq;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzcgq;->zzbzn:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgq;->zzdcz:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcgq;->zzizn:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcgq;->zzizo:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcgp;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
