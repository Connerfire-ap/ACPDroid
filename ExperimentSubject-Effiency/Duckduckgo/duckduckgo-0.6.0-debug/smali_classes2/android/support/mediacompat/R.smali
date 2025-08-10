.class public final Landroid/support/mediacompat/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/mediacompat/R$attr;,
        Landroid/support/mediacompat/R$bool;,
        Landroid/support/mediacompat/R$color;,
        Landroid/support/mediacompat/R$dimen;,
        Landroid/support/mediacompat/R$drawable;,
        Landroid/support/mediacompat/R$id;,
        Landroid/support/mediacompat/R$integer;,
        Landroid/support/mediacompat/R$layout;,
        Landroid/support/mediacompat/R$string;,
        Landroid/support/mediacompat/R$style;,
        Landroid/support/mediacompat/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/mediacompat/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x52d1f3d7cb0c714eL    # 9.142477943837417E90

    const/4 v2, 0x1

    const-string v3, "android/support/mediacompat/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/mediacompat/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/mediacompat/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
