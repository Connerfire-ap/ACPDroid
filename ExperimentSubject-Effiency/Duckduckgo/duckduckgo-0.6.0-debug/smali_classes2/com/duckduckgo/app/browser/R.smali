.class public final Lcom/duckduckgo/app/browser/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/browser/R$anim;,
        Lcom/duckduckgo/app/browser/R$animator;,
        Lcom/duckduckgo/app/browser/R$attr;,
        Lcom/duckduckgo/app/browser/R$bool;,
        Lcom/duckduckgo/app/browser/R$color;,
        Lcom/duckduckgo/app/browser/R$dimen;,
        Lcom/duckduckgo/app/browser/R$drawable;,
        Lcom/duckduckgo/app/browser/R$id;,
        Lcom/duckduckgo/app/browser/R$integer;,
        Lcom/duckduckgo/app/browser/R$layout;,
        Lcom/duckduckgo/app/browser/R$menu;,
        Lcom/duckduckgo/app/browser/R$mipmap;,
        Lcom/duckduckgo/app/browser/R$raw;,
        Lcom/duckduckgo/app/browser/R$string;,
        Lcom/duckduckgo/app/browser/R$style;,
        Lcom/duckduckgo/app/browser/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x390ab0d9ebe720eeL    # 6.425582441000778E-34

    const/4 v2, 0x1

    const-string v3, "com/duckduckgo/app/browser/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
