.class public final Landroid/support/constraint/R$id;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final all:I = 0x7f08001c

.field public static final basic:I = 0x7f080022

.field public static final chains:I = 0x7f08002b

.field public static final none:I = 0x7f08006f

.field public static final packed:I = 0x7f080074

.field public static final parent:I = 0x7f080077

.field public static final spread:I = 0x7f0800a9

.field public static final spread_inside:I = 0x7f0800aa

.field public static final wrap:I = 0x7f0800d2


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/constraint/R$id;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x499fdfb69805186dL    # 4.549192156013592E46

    const/4 v2, 0x1

    const-string v3, "android/support/constraint/R$id"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/constraint/R$id;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/constraint/R$id;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
