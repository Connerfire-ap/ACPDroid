.class public final Landroid/support/design/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/R$anim;,
        Landroid/support/design/R$animator;,
        Landroid/support/design/R$attr;,
        Landroid/support/design/R$bool;,
        Landroid/support/design/R$color;,
        Landroid/support/design/R$dimen;,
        Landroid/support/design/R$drawable;,
        Landroid/support/design/R$id;,
        Landroid/support/design/R$integer;,
        Landroid/support/design/R$layout;,
        Landroid/support/design/R$string;,
        Landroid/support/design/R$style;,
        Landroid/support/design/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/design/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x67743eb40156c7d2L    # -1.946682009165456E-190

    const/4 v2, 0x1

    const-string v3, "android/support/design/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/design/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/design/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
