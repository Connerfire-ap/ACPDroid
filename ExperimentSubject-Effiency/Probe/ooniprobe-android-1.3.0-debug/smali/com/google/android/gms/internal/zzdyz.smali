.class public final Lcom/google/android/gms/internal/zzdyz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdza<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzmhn:Lcom/google/android/gms/internal/zzdyz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdyz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdyz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdyz;->zzmhn:Lcom/google/android/gms/internal/zzdyz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzbrq()Lcom/google/android/gms/internal/zzdyz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/zzdyz<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdyz;->zzmhn:Lcom/google/android/gms/internal/zzdyz;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/zzdza;Lcom/google/android/gms/internal/zzdza;)Lcom/google/android/gms/internal/zzdza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzdza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/zzdzd;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/zzdzd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzdza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzdzc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzdzc<",
            "TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final zzbrp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzbrr()Lcom/google/android/gms/internal/zzdza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzbrs()Lcom/google/android/gms/internal/zzdza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzbrt()Lcom/google/android/gms/internal/zzdza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzbru()Lcom/google/android/gms/internal/zzdza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzdza<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method
