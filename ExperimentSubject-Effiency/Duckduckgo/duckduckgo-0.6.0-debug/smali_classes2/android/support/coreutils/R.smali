.class public final Landroid/support/coreutils/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/coreutils/R$attr;,
        Landroid/support/coreutils/R$bool;,
        Landroid/support/coreutils/R$color;,
        Landroid/support/coreutils/R$dimen;,
        Landroid/support/coreutils/R$drawable;,
        Landroid/support/coreutils/R$id;,
        Landroid/support/coreutils/R$integer;,
        Landroid/support/coreutils/R$layout;,
        Landroid/support/coreutils/R$string;,
        Landroid/support/coreutils/R$style;,
        Landroid/support/coreutils/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/coreutils/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x50a120d5a5bdc7c8L    # -1.6272799696057934E-80

    const/4 v2, 0x1

    const-string v3, "android/support/coreutils/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/coreutils/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/coreutils/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
