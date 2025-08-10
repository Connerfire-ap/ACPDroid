.class public final Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;
.super Ljava/lang/Object;
.source "AgentOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final APPEND:Ljava/lang/String; = "append"

.field public static final CLASSDUMPDIR:Ljava/lang/String; = "classdumpdir"

.field public static final DEFAULT_ADDRESS:Ljava/lang/String;

.field public static final DEFAULT_DESTFILE:Ljava/lang/String; = "jacoco.exec"

.field public static final DEFAULT_PORT:I = 0x189c

.field public static final DESTFILE:Ljava/lang/String; = "destfile"

.field public static final DUMPONEXIT:Ljava/lang/String; = "dumponexit"

.field public static final EXCLCLASSLOADER:Ljava/lang/String; = "exclclassloader"

.field public static final EXCLUDES:Ljava/lang/String; = "excludes"

.field public static final INCLBOOTSTRAPCLASSES:Ljava/lang/String; = "inclbootstrapclasses"

.field public static final INCLNOLOCATIONCLASSES:Ljava/lang/String; = "inclnolocationclasses"

.field public static final INCLUDES:Ljava/lang/String; = "includes"

.field public static final JMX:Ljava/lang/String; = "jmx"

.field private static final OPTION_SPLIT:Ljava/util/regex/Pattern;

.field public static final OUTPUT:Ljava/lang/String; = "output"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final SESSIONID:Ljava/lang/String; = "sessionid"

.field private static final VALID_OPTIONS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 117
    const-string v0, ",(?=[a-zA-Z0-9_\\-]+=)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->OPTION_SPLIT:Ljava/util/regex/Pattern;

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->DEFAULT_ADDRESS:Ljava/lang/String;

    .line 191
    const-string v1, "destfile"

    const-string v2, "append"

    const-string v3, "includes"

    const-string v4, "excludes"

    const-string v5, "exclclassloader"

    const-string v6, "inclbootstrapclasses"

    const-string v7, "inclnolocationclasses"

    const-string v8, "sessionid"

    const-string v9, "dumponexit"

    const-string v10, "output"

    const-string v11, "address"

    const-string v12, "port"

    const-string v13, "classdumpdir"

    const-string v14, "jmx"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->options:Ljava/util/Map;

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "optionstr"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;-><init>()V

    .line 213
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 214
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->OPTION_SPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 215
    .local v3, "entry":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 216
    .local v4, "pos":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_1

    .line 220
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "key":Ljava/lang/String;
    sget-object v8, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v8, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 226
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "value":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v4    # "pos":I
    .restart local v5    # "key":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    const-string v6, "Unknown agent option \"%s\"."

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 217
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    const-string v6, "Invalid agent option syntax \"%s\"."

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 230
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "pos":I
    :cond_2
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->validateAll()V

    .line 232
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 3
    .param p1, "properties"    # Ljava/util/Properties;

    .line 241
    invoke-direct {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;-><init>()V

    .line 242
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 245
    invoke-direct {p0, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 248
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private getOption(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 582
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getOption(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 577
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private setOption(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 560
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method private setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    return-void
.end method

.method private setOption(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 564
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private validateAll()V
    .locals 1

    .line 251
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getPort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->validatePort(I)V

    .line 252
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOutput()Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;

    .line 253
    return-void
.end method

.method private validatePort(I)V
    .locals 2
    .param p1, "port"    # I

    .line 256
    if-ltz p1, :cond_0

    .line 259
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "port must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 475
    sget-object v0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->DEFAULT_ADDRESS:Ljava/lang/String;

    const-string v1, "address"

    invoke-direct {p0, v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppend()Z
    .locals 2

    .line 286
    const-string v0, "append"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getClassDumpDir()Ljava/lang/String;
    .locals 2

    .line 527
    const-string v0, "classdumpdir"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestfile()Ljava/lang/String;
    .locals 2

    .line 267
    const-string v0, "destfile"

    const-string v1, "jacoco.exec"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDumpOnExit()Z
    .locals 2

    .line 430
    const-string v0, "dumponexit"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExclClassloader()Ljava/lang/String;
    .locals 2

    .line 348
    const-string v0, "exclclassloader"

    const-string v1, "sun.reflect.DelegatingClassLoader"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExcludes()Ljava/lang/String;
    .locals 2

    .line 327
    const-string v0, "excludes"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInclBootstrapClasses()Z
    .locals 2

    .line 370
    const-string v0, "inclbootstrapclasses"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInclNoLocationClasses()Z
    .locals 2

    .line 391
    const-string v0, "inclnolocationclasses"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIncludes()Ljava/lang/String;
    .locals 2

    .line 306
    const-string v0, "includes"

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJmx()Z
    .locals 2

    .line 546
    const-string v0, "jmx"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOutput()Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;
    .locals 2

    .line 496
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->options:Ljava/util/Map;

    const-string v1, "output"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getPort()I
    .locals 2

    .line 452
    const-string v0, "port"

    const/16 v1, 0x189c

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuotedVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "agentJarFile"    # Ljava/io/File;

    .line 607
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 411
    const-string v0, "sessionid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "agentJarFile"    # Ljava/io/File;

    .line 595
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string v1, "-javaagent:%s=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prependVMArguments(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "arguments"    # Ljava/lang/String;
    .param p2, "agentJarFile"    # Ljava/io/File;

    .line 624
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 625
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "-javaagent:%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "plainAgent":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 631
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 632
    invoke-static {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/CommandLineSupport;->quote(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 487
    const-string v0, "address"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public setAppend(Z)V
    .locals 1
    .param p1, "append"    # Z

    .line 296
    const-string v0, "append"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 297
    return-void
.end method

.method public setClassDumpDir(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .line 537
    const-string v0, "classdumpdir"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public setDestfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "destfile"    # Ljava/lang/String;

    .line 277
    const-string v0, "destfile"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public setDumpOnExit(Z)V
    .locals 1
    .param p1, "dumpOnExit"    # Z

    .line 441
    const-string v0, "dumponexit"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 442
    return-void
.end method

.method public setExclClassloader(Ljava/lang/String;)V
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .line 359
    const-string v0, "exclclassloader"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .locals 1
    .param p1, "excludes"    # Ljava/lang/String;

    .line 338
    const-string v0, "excludes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setInclBootstrapClasses(Z)V
    .locals 1
    .param p1, "include"    # Z

    .line 381
    const-string v0, "inclbootstrapclasses"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 382
    return-void
.end method

.method public setInclNoLocationClasses(Z)V
    .locals 1
    .param p1, "include"    # Z

    .line 402
    const-string v0, "inclnolocationclasses"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 403
    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .locals 1
    .param p1, "includes"    # Ljava/lang/String;

    .line 317
    const-string v0, "includes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public setJmx(Z)V
    .locals 1
    .param p1, "jmx"    # Z

    .line 556
    const-string v0, "jmx"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    .line 557
    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 1
    .param p1, "output"    # Ljava/lang/String;

    .line 507
    invoke-static {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOutput(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;)V

    .line 508
    return-void
.end method

.method public setOutput(Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;)V
    .locals 2
    .param p1, "output"    # Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;

    .line 517
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions$OutputMode;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "output"

    invoke-direct {p0, v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "port"    # I

    .line 463
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->validatePort(I)V

    .line 464
    const-string v0, "port"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;I)V

    .line 465
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 421
    const-string v0, "sessionid"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 643
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 644
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 645
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 646
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 651
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
