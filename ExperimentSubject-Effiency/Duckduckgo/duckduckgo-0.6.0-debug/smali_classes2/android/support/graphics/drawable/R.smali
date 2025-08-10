.class public final Landroid/support/graphics/drawable/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/R$attr;,
        Landroid/support/graphics/drawable/R$bool;,
        Landroid/support/graphics/drawable/R$color;,
        Landroid/support/graphics/drawable/R$dimen;,
        Landroid/support/graphics/drawable/R$drawable;,
        Landroid/support/graphics/drawable/R$id;,
        Landroid/support/graphics/drawable/R$integer;,
        Landroid/support/graphics/drawable/R$layout;,
        Landroid/support/graphics/drawable/R$string;,
        Landroid/support/graphics/drawable/R$style;,
        Landroid/support/graphics/drawable/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/graphics/drawable/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xc25fb6b86d2ff53L

    const/4 v2, 0x1

    const-string v3, "android/support/graphics/drawable/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/graphics/drawable/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
