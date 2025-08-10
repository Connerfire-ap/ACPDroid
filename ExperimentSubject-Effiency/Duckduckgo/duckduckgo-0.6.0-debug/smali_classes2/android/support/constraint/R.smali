.class public final Landroid/support/constraint/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/R$attr;,
        Landroid/support/constraint/R$id;,
        Landroid/support/constraint/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/constraint/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1c55aa1c32dbdc87L    # 3.503733087155051E-172

    const/4 v2, 0x1

    const-string v3, "android/support/constraint/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/constraint/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/constraint/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
