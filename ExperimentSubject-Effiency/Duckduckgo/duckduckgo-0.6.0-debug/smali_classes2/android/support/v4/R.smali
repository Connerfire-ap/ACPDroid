.class public final Landroid/support/v4/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/R$attr;,
        Landroid/support/v4/R$bool;,
        Landroid/support/v4/R$color;,
        Landroid/support/v4/R$dimen;,
        Landroid/support/v4/R$drawable;,
        Landroid/support/v4/R$id;,
        Landroid/support/v4/R$integer;,
        Landroid/support/v4/R$layout;,
        Landroid/support/v4/R$string;,
        Landroid/support/v4/R$style;,
        Landroid/support/v4/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v4/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x23aad1d66af5f65aL    # -6.157871287251904E136

    const/4 v2, 0x1

    const-string v3, "android/support/v4/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v4/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/v4/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
