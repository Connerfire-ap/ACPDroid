.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/core/JaCoCo;
.super Ljava/lang/Object;
.source "JaCoCo.java"


# static fields
.field public static final HOMEURL:Ljava/lang/String;

.field public static final RUNTIMEPACKAGE:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "org.jacoco.agent.rt.internal_8ff85ea.core.jacoco"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 33
    .local v0, "bundle":Ljava/util/ResourceBundle;
    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/JaCoCo;->VERSION:Ljava/lang/String;

    .line 34
    const-string v1, "HOMEURL"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/JaCoCo;->HOMEURL:Ljava/lang/String;

    .line 35
    const-string v1, "RUNTIMEPACKAGE"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/JaCoCo;->RUNTIMEPACKAGE:Ljava/lang/String;

    .line 36
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method
