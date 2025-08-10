.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
.source "AnnotationNode.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;-><init>(I)V

    .line 91
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .line 74
    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    if-ne v0, v1, :cond_0

    .line 78
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;-><init>(I)V

    .line 102
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 103
    return-void
.end method

.method static accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "av"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 270
    if-eqz p0, :cond_5

    .line 271
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 273
    .local v0, "typeconst":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v0    # "typeconst":[Ljava/lang/String;
    goto :goto_1

    :cond_0
    instance-of v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    if-eqz v0, :cond_1

    .line 275
    move-object v0, p2

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    .line 276
    .local v0, "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V

    .line 277
    .end local v0    # "an":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    goto :goto_1

    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 278
    invoke-virtual {p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    move-result-object v0

    .line 279
    .local v0, "v":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    if-eqz v0, :cond_3

    .line 280
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    .line 281
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 282
    const/4 v3, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnd()V

    .line 286
    .end local v0    # "v":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .end local v1    # "array":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    goto :goto_1

    .line 287
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;)V
    .locals 4
    .param p1, "av"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;

    .line 246
    if-eqz p1, :cond_1

    .line 247
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 251
    .local v2, "value":Ljava/lang/Object;
    invoke-static {p1, v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;->visitEnd()V

    .line 256
    :cond_1
    return-void
.end method

.method public check(I)V
    .locals 0
    .param p1, "api"    # I

    .line 237
    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    instance-of v0, p2, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 118
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    .line 119
    .local v0, "v":[B
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-byte v4, v0, v1

    .line 121
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_3
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v0    # "v":[B
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto/16 :goto_9

    :cond_4
    instance-of v0, p2, [Z

    if-eqz v0, :cond_6

    .line 125
    move-object v0, p2

    check-cast v0, [Z

    check-cast v0, [Z

    .line 126
    .local v0, "v":[Z
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-boolean v4, v0, v1

    .line 128
    .local v4, "b":Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v4    # "b":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 130
    :cond_5
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0    # "v":[Z
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    goto/16 :goto_9

    :cond_6
    instance-of v0, p2, [S

    if-eqz v0, :cond_8

    .line 132
    move-object v0, p2

    check-cast v0, [S

    check-cast v0, [S

    .line 133
    .local v0, "v":[S
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_7

    aget-short v4, v0, v1

    .line 135
    .local v4, "s":S
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v4    # "s":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 137
    :cond_7
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v0    # "v":[S
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    goto/16 :goto_9

    :cond_8
    instance-of v0, p2, [C

    if-eqz v0, :cond_a

    .line 139
    move-object v0, p2

    check-cast v0, [C

    check-cast v0, [C

    .line 140
    .local v0, "v":[C
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    array-length v3, v0

    :goto_4
    if-ge v1, v3, :cond_9

    aget-char v4, v0, v1

    .line 142
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v4    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 144
    :cond_9
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v0    # "v":[C
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Character;>;"
    goto/16 :goto_9

    :cond_a
    instance-of v0, p2, [I

    if-eqz v0, :cond_c

    .line 146
    move-object v0, p2

    check-cast v0, [I

    check-cast v0, [I

    .line 147
    .local v0, "v":[I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v0

    :goto_5
    if-ge v1, v3, :cond_b

    aget v4, v0, v1

    .line 149
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v4    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 151
    :cond_b
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v0    # "v":[I
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_9

    :cond_c
    instance-of v0, p2, [J

    if-eqz v0, :cond_e

    .line 153
    move-object v0, p2

    check-cast v0, [J

    check-cast v0, [J

    .line 154
    .local v0, "v":[J
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    array-length v3, v0

    :goto_6
    if-ge v1, v3, :cond_d

    aget-wide v4, v0, v1

    .line 156
    .local v4, "lng":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v4    # "lng":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 158
    :cond_d
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v0    # "v":[J
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_9

    :cond_e
    instance-of v0, p2, [F

    if-eqz v0, :cond_10

    .line 160
    move-object v0, p2

    check-cast v0, [F

    check-cast v0, [F

    .line 161
    .local v0, "v":[F
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    array-length v3, v0

    :goto_7
    if-ge v1, v3, :cond_f

    aget v4, v0, v1

    .line 163
    .local v4, "f":F
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v4    # "f":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 165
    :cond_f
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v0    # "v":[F
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    goto :goto_9

    :cond_10
    instance-of v0, p2, [D

    if-eqz v0, :cond_12

    .line 167
    move-object v0, p2

    check-cast v0, [D

    check-cast v0, [D

    .line 168
    .local v0, "v":[D
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v2, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    array-length v3, v0

    :goto_8
    if-ge v1, v3, :cond_11

    aget-wide v4, v0, v1

    .line 170
    .local v4, "d":D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v4    # "d":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 172
    :cond_11
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v0    # "v":[D
    .end local v2    # "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    goto :goto_9

    .line 174
    :cond_12
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_9
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 196
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_2
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "annotation":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;

    invoke-direct {v1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public visitEnd()V
    .locals 0

    .line 219
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AnnotationNode;->values:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p3, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method
